module.exports = function (variables, { tpl }) {
	const newName = variables.componentName.replace('Svg', '') + 'Icon'
	variables.exports[0].declaration.name = newName;
	return tpl`
${variables.imports};

${variables.interfaces};

const ${newName} = (${variables.props}) => (
  ${variables.jsx}
);

${(variables.exports)};
`
}
